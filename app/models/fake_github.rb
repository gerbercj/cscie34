class FakeGithub
  PULL_REQUESTS = {
    'gerbercj/server' => {
      120 => {
        name: 'feature/test_parsing',
        description: 'Modify the parsing algorithm to be different',
        has_migrations: false,
        status: 'fail'
      },
      121 => {
        name: 'feature/new_code',
        description: 'Create a new page for doing the things',
        has_migrations: false,
        status: 'pass'
      },
      123 => {
        name: 'feature/bug_fixes',
        description: 'Update the application with some corrections @reviewers',
        has_migrations: true,
        status: 'pass'
      }
    },
    'gerbercj/event_service' => {
      57 => {
        name: 'feature/new_events',
        description: 'Add new event types to the service',
        has_migrations: false,
        status: 'pass'
      }
    },
    'gerbercj/device_service' => {
      14 => {
        name: 'feature/fix_device',
        description: 'Make a correction to the device model',
        has_migrations: false,
        status: 'pass'
      },
      15 => {
        name: 'feature/fast_code',
        description: 'Implement some speed improvements to the service',
        has_migrations: false,
        status: 'pass'
      }
    }
  }

  def repositories
    PULL_REQUESTS.keys
  end

  def pull_requests(repo)
    PULL_REQUESTS[repo].keys
  end

  def pull_request(repo, pr)
    PULL_REQUESTS[repo][pr]
  end

end
